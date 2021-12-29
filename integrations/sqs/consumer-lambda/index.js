import axios from 'axios';

export const handler = async(event, context) => {
    const batchItemFailures = [];
    for(let record of event.Records) {
        try {
            // if this passes, processing went fine
            await axios.get(`https://pokeapi.co/api/v2/pokemon/${record.body}`);
        } catch(e) {
            // if it throws, collect id of failed message
            batchItemFailures.push({
                itemIdentifier: record.messageId
            })
            console.log(`ERROR: [${record.messageId}] - [${record.body}] - ${e}`);
        }
    }

    return { batchItemFailures };
}